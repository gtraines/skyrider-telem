from abc import ABCMeta, abstractmethod
from core import UpdatableAbc

class ElementContainerAbc(UpdatableAbc):
    
    def __init__(self, element, element_parent, *children):
        self.validate_element(element)
        self._element = element
        
        if hasattr(element, 'name'):
            self._name = element.name
        else:
            self._name = tostring(element)
            
        self._element_parent = element_parent
        self._children = []
        
        if children is not None and len(children) > 0:
            for child in children:
                self.add_child(child)
        
    
    def add_child(self, element_to_add):
        self.validate_element(element_to_add)
        self._children.append(element_to_add)
    
    def update(self, context):
        success = self._element.update(context)
        try:
            for child in self._children:
                update_result = child.update(context)
                if not update_result:
                    raise Exception(child.name)
        
        except Exception as ex:
            raise Exception('Child of element failed to update', ex)
        return success

    @staticmethod
    def validate_element(element):
        if not isinstance(element, UpdatableAbc):
            raise Exception('Elements must implement UpdatableAbc')
        

