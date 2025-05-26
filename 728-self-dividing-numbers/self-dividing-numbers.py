class Solution:
    def selfDividingNumbers(self, left: int, right: int) -> List[int]:
        lst=[]
        for i in range(left,right+1): 
            if self.selfdividing(i):
                lst.append(i)

        return lst
            
    def selfdividing(self,num):
        for i in str(num):
            if i=='0'or num % int(i)!=0:
                return False
        return True
        