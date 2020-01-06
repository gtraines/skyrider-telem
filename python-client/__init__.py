from core import UpdatableAbc
from usrinterface.uielements.elementcontainer import ElementContainerAbc


class TestElement(UpdatableAbc):
    
    def __init__(self):
        self.name = 'TestElement'
        
    def update(self, context):
        print('Now this is podracing')
        return True


class TestChildElement(UpdatableAbc):
    
    def __init__(self):
        self.name = 'TestElement'
        
    def update(self, context):
        print('Now this is bantha poodoo')
        return True


class TestElementContainer(ElementContainerAbc):
    
    def __init__(self):
        element_instance = TestElement()
        element_child = TestChildElement()
        ElementContainerAbc.__init__(self, element_instance, None, element_child)
    
    
if __name__ == "__main__":
    print('Hello there')

    container = TestElementContainer()
    context = {}
    container.update(context)
