import os
import shutil
import sys
import traceback

def is_number(s):
    try:
        int(s)
        return True
    except ValueError:
        pass

    try:
        float(s)
        return True
    except ValueError:
        pass

    return False

def removenilvelue(data):
    if data[-1] == "":
        data.pop()
    if data[0] == "":
        data.pop(0)


#拿到配置key
def getKeyData(csvdata):
    key1, key2, Key = None, None, None
    for x in csvdata:
        if "///key" in x[0]:
            Key = x
            key1 ,key2 = x[1], x[2]
            break

    #拿到字段数据
    Index, Filter = None, None
    for x in csvdata:
        if "/" == x[0][:1]:
            if key1 in x[0]:
                Index = x
            elif key2 in x[0]:
                Filter = x

    isarr = "[]" in Index[0]
    if isarr:
        Index[0] = Key[1]

    # print(Index)
    # print(Filter)

    return Index, Filter, key1

 #获取写入Lua文件的额数据
def getWriteLuaData(csvdata, Index, Filter, Key1):
    luatable_server = {}   #转服务器lua表数据
    notarr = "/" in Index[0]
    count = 1
    for x in csvdata:
        #过滤没用的数据
        if x[0][:1] == "/" or x[0][:1] == "," or x[0][:1] == "" or x[0] == Index[0]:
            continue

        data_server = {}
        for i,key in enumerate(Index):
            # print(i,key)

            if notarr and i == 0:
                continue

            if Filter[i] == "C" or Filter[i] == "":
                continue

            data = x[i]
            if data == "" or data == "\n":
                continue

            if not is_number(data):
                isturn = False
                if "|" in data:
                    isturn = True
                    data = data.split("|")
                    removenilvelue(data)
                    for ii in range(len(data)):
                        if "^" in data[ii]:
                            data[ii] = data[ii].split("^")
                            removenilvelue(data[ii])
                elif "^" in data:
                    isturn = True
                    data = data.split("^")
                    removenilvelue(data)
                    data = [data]

                #数组转对象
                if isturn:
                    dataobj = {}
                    for i in range(len(data)):
                        v = data[i]
                        addi = i + 1
                        if type(v) == list:
                            dataobj[addi] = {}
                            for ii in range(len(v)):
                                dataobj[addi][ii+1] = v[ii]
                        else:
                            dataobj[addi] = data[i]
                    data = dataobj 
            data_server[key] = data
        # data_server[Key1] = x[0]
        if notarr:
            luatable_server[x[0]] = data_server
        else:
            luatable_server[str(count)] = data_server
            count = count + 1

    # print(luatable_server)
    return luatable_server


#递归写Lua文件
def writeLuaTable(value, f, deep, key):
    tab = ""
    for _ in range(deep):
        tab = tab + "\t"

    if type(value) == dict:
        if is_number(key):
            f.write("%s[%s] = {\n" % (tab, key))
        else:
            f.write("%s%s = {\n" % (tab, key))

        for k,v in value.items():
            writeLuaTable(v, f, deep+1, k)

        if deep == 0:
            f.write("%s}\n" % (tab))
        else:
            f.write("%s},\n" % (tab))
    else:
        if is_number(key):
            if is_number(value):
                f.write("%s[%s] = %s,\n" % (tab, key, value))
            else:
                f.write("%s[%s] = \"%s\",\n" % (tab, key, value))
        else:
            if is_number(value):
                f.write("%s%s = %s,\n" % (tab, key, value))
            else:
                f.write("%s%s = \"%s\",\n" % (tab, key, value))
    
if __name__=='__main__':
    serverCopyPath = sys.argv[1:2]
    if serverCopyPath:
        serverCopyPath = serverCopyPath[0]
        code = serverCopyPath[-1:]
        if code != '\\' and code != '/':
            serverCopyPath = serverCopyPath + "\\"

    #所有.csv的文件
    files = [x for x in os.listdir('.') if os.path.isfile(x) and os.path.splitext(x)[1]=='.csv']

    serverpath = "./dataserver/"
    if os.path.isdir(serverpath):
        shutil.rmtree(serverpath)
    os.mkdir(serverpath)

    if os.path.isdir(serverCopyPath):
        shutil.rmtree(serverCopyPath)
    os.mkdir(serverCopyPath)

    for file in files:
        # if file != "cfg_Npc_tp.csv":
        #     continue

        print("【提示】开始转服务端文件："+file)
        try:

            f = open(file, "r")                                         #打开文件
            csvdata = f.readlines()                                     #读取所有行 返回 list
            f.close()

            #过滤末尾\n符号
            for i in range(len(csvdata)):
                if csvdata[i][-1:] == "\n":
                    csvdata[i] = csvdata[i][:-1]
                    csvdata[i] = csvdata[i].split(",")

            Index, Filter, Key1 = getKeyData(csvdata)
            luatable_server = getWriteLuaData(csvdata, Index, Filter, Key1)
            filename = os.path.splitext(file)[0] + ".lua"
            with open(serverpath+filename, "w") as f:
                writeLuaTable(luatable_server, f, 0, "local config")
                f.write("return config")

            if serverCopyPath:
                copy_old_path = serverpath+filename
                copy_new_path = serverCopyPath+filename
                shutil.copyfile(copy_old_path, copy_new_path)
        except:
            # traceback.print_exc()
            print("【服务端】转文件失败失败失败失败失败失败失败失败失败失败失败失败失败失败："+file)