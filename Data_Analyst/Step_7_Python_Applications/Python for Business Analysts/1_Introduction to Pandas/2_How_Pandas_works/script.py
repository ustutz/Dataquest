# Generated by Haxe 3.3.0

import pandas as pandas_Pandas_Module


class Script:
    __slots__ = ()

    @staticmethod
    def main():
        housing_2013 = pandas_Pandas_Module.read_csv("../Hud_2013.csv")
        print(str(housing_2013.head(5)))



Script.main()