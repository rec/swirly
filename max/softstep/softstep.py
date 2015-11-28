import json

def fix():
    before = json.load(open('midi.json'))
    pretty = {}
    for key, value in before.iteritems():
        parts = key.split('_')
        d = pretty
        for p in parts[:-1]:
            d = d.setdefault(p, {})
        d[parts[-1]] = value
    json.dump(pretty, open('pretty.json', 'w'), indent=4)
    json.dump(pretty, open('compressed.json', 'w'))

if __name__ == '__main__':
    fix()
