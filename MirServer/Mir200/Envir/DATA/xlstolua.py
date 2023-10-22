import xlrd                           #导入模块
from xlutils.copy import copy        #导入copy模块
import os
import shutil

def mkdir(path):
    os.mkdir(path)

def rmdir(path):
    if os.path.isdir(path):
        shutil.rmtree(path)

def remkdir(path):
    rmdir(path)
    mkdir(path)

def removenilvelue(data):
    if data[-1] == "":
        data.pop()

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

#拿到配置key
def getKeyData(table):
    title = None
    for row in range(table.nrows):
        key = table.cell_value(row, 0)
        if type(key) == str:
            if "//key" in key:
                title = "/"+table.cell_value(row, 1)

            if title:
                if title in key:
                    return table.row_values(row)

    for row in range(table.nrows):
        key = table.cell_value(row, 0)
        if type(key) == str:
            if not ("/" in key):
                return table.row_values(row) 


#获取写入Lua文件的额数据
def getWriteLuaData(table, Index, filename):
    luatable_server = {}   #转服务器lua表数据
    for row in range(table.nrows):
        #过滤没用的数据
        x = table.row_values(row)
        if Index[0] == x[0]:
            continue
        if isinstance (x[0], str) and "/" in x[0]:
            continue
        
        data_server = {}
        for i,key in enumerate(Index):
            value = x[i]
            if key == "" or value == "":
                continue

            if is_number(value):
                if value == int(value):
                    value = int(value)
            else:
                if '\\' in value:
                    value = value.replace('\\', '\\\\')

                # if "|" in value:
                #     value = value.split("|")
                #     removenilvelue(value)
                #     for ii in range(len(value)):
                #         if "#" in value[ii]:
                #             value[ii] = value[ii].split("#")
                #             removenilvelue(value[ii])
                # elif "#" in value:
                #     value = value.split("#")
                #     removenilvelue(value)
                #     value = [value]

            if i == 0:
                luatable_server[value] = data_server
            else:
                data_server[key] = value

    return luatable_server

#递归写Lua文件
def writeLuaTable(value, f, deep, key):
    tab = ""
    for _ in range(deep):
        tab = tab + "\t"

    if type(value) == list:
        if is_number(key):
            f.write("%s[%s] = {\n" % (tab, key+1))
        else:
            f.write("%s%s = {\n" % (tab, key))

        for i,x in enumerate(value):
            writeLuaTable(x, f, deep+1, i)

        if deep == 0:
            f.write("%s}\n" % (tab))
        else:
            f.write("%s},\n" % (tab))
    elif type(value) == dict:
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
                # print(key, value, type(key), type(value))
                f.write("%s[%s] = %s,\n" % (tab, key+1, value))
            else:
                f.write("%s[%s] = \"%s\",\n" % (tab, key, value))
        else:
            if is_number(value):
                f.write("%s%s = %s,\n" % (tab, key, value))
            else:
                f.write("%s%s = \"%s\",\n" % (tab, key, value))
    
if __name__=='__main__':
    # remkdir("Envir/DataLua")

    xlsarr = [
        "Envir/Data/cfg_store.xls",
        "Envir/Data/cfg_att_score.xls",
        # "Envir/Data/cfg_npclist.xls",
        # "Envir/Data/cfg_hyperlink.xls",
        # "Envir/Data/cfg_level.xls",
        # "Envir/Data/cfg_item.xls",
        # "Envir/Data/cfg_equip.xls",
    ]

    for cfg_path in xlsarr:
        xlsData = xlrd.open_workbook(cfg_path)    #打开xls文件
        table = xlsData.sheets()[0] #读取第一个（0）表单

        filename = os.path.split(cfg_path)[1]
        filename = os.path.splitext(filename)[0]
        print(filename)

        Index = getKeyData(table)
        # print(Index)
        luatable_server = getWriteLuaData(table, Index, filename)
        # if cfg_path == "Envir/Data/cfg_item.xls":
        #     print(Index)
        with open("Envir/QuestDiary/cfgxls/"+filename+".lua", "w") as f:
            writeLuaTable(luatable_server, f, 0, "local config")
            f.write("return config")