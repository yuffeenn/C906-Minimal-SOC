def gen_hex(input_file: str):
    output_file = input_file.split('.')[0] + ".hex"
    hex_lines = []
    fp = open(input_file)
    for line in fp:
        line = line.strip()
        line = line.split()
        addr = int(line[0][1:], 16)
        data = ''.join(line[1:])
        parts = [data[i:i + 2] for i in range(0, len(data), 2)]
        data = ''.join(parts[::-1])
        hex_lines.append(f"@{hex(addr//4)[2:].zfill(8)} {data}\n")
    fp.close()
    fp = open(output_file, 'w+')
    fp.writelines(hex_lines)
    fp.close()


if __name__ == "__main__":
    gen_hex('case.pat')