class Food(object):
    def _init_(self, m, v, w):
        self.name = name
        self.value = v
        self.calories = w

    def getValue(self):
        return self.value

    def getCost(self):
        return self.calories

    def density(self):
        return self.getValue()/self.getCost()

    def _str_(self):
        return self.name + ': <' + str(self.value)\


def buildMenu(names, values, calories):
    menu = []
    for i in range(len(values)):
        menu.append(Food(names[i], values[i],
                            calories))
    return menu


def greedy(items, maxCost, keyFunction)
    itemsCopy = sorted(items, key = keyFunction,
                        reverse = True)
    result = []
    totalValue, totalCost = 0.0, 0.0

    for i in range(len(itemsCopy)):
        if (totalCost+itemsCopy[i].getCost()) <= maxCost:
            result.append(itemsCopy[i])
            totalCost += itemsCopy[i].getCost()
            totalValue += itemsCopy[i].getValue()
    return (result, totalValue)

def testGreedys(maxUnits):
    print('Use greedy by value to allocate', maxUnits, 'calories')
    testGreedys(food, maxUnits, Food.getValue)
    print('\nUse greedy by cost to allocate', maxUnits, 'calories')
    testGreedys(food, maxUnits, lambda x: 1/Food.getCost(x))
    print('\nUse greedy by density to allocate', maxUnits, 'calories')
    testGreedys(food, maxUnits, Food.density)
testGreedys(800)