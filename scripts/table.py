'''
https://docs.python.org/zh-cn/3.11/library/doctest.html#simple-usage-checking-examples-in-docstrings
run python3 -m doctest -v table.py
'''

default_style = [
    '┏', '┳', '┓', 
    '┣', '╋', '┫', 
    '┗', '┻', '┛', 
    '━', '┃' 
]

def print_style(style, arr):
    '''
    >>> print_style(['[', ',', ']'], [1, 2, 3, 4])
    [1,2,3,4]

    '''
    print(style[0], end='')
    for i, item in enumerate(arr):
        e = style[1] if i < len(arr) - 1 else ''
        print(item, end = e)
    print(style[2])

def make_print_table_row(column_widths, padding):
    def inner_fun(style):
        print_style(style, [padding * (width + 2) for width in column_widths])
    return inner_fun

def make_print_data_row(column_widths, div_line):
    def inner_fun(row):
        print_style([div_line] * 3, [' %s ' % str(row[i]).ljust(width) for i, width in enumerate(column_widths)])
    return inner_fun

def print_table(data, style = default_style):
    '''
    >>> data = [ ["Name", "Age", "Country"], ["Alice", 30, "USA"], ["Bob", 25, "Canada"], ["Charlie", 35, "UK"]]
    >>> print_table(data)
    ┏━━━━━━━━━┳━━━━━┳━━━━━━━━━┓
    ┃ Name    ┃ Age ┃ Country ┃
    ┣━━━━━━━━━╋━━━━━╋━━━━━━━━━┫
    ┃ Alice   ┃ 30  ┃ USA     ┃
    ┃ Bob     ┃ 25  ┃ Canada  ┃
    ┃ Charlie ┃ 35  ┃ UK      ┃
    ┗━━━━━━━━━┻━━━━━┻━━━━━━━━━┛

    '''
    # 找到每列的最大长度
    column_widths = [max(len(str(item)) for item in column) for column in zip(*data)]
    
    # 打印表头
    print_table_row = make_print_table_row(column_widths, style[-2])
    print_data_row = make_print_data_row(column_widths, style[-1])

    print_table_row(style[0:3])
    print_data_row(data[0])

    # 打印分隔线
    print_table_row(style[3:6])

    # 打印数据
    for row in data[1:]:
        print_data_row(row)

    # 打印结束结尾
    print_table_row(style[6:9])


def get_row():
    return input().split()

if __name__ == "__main__":
    data = []
    while True:
        try:
            data.append(get_row())
        except EOFError:
            break
    print_table(data)
