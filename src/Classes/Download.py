######################################################################
#                              DOWNLOAD                              #
######################################################################

class Download:
    """
    Stores data about a download for usage
    """    
    def __init__(self, url, extension, name, display_name, path):
        self.display_name = display_name
        self.url = url
        self.extension = extension
        self.name = name
        self.path = path