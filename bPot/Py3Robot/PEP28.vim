Naming

    Variables, functions, methods, packages, modules
        lower_case_with_underscores
    Classes and Exceptions
        CapWords
    Protected methods and internal functions
        _single_leading_underscore(self, ...)
    Private methods
        __double_leading_underscore(self, ...)
    Constants
        ALL_CAPS_WITH_UNDERSCORES

Prefer "reverse notation".

Yes

elements = ...
elements_active = ...
elements_defunct = ...

No

elements = ...
active_elements = ...
defunct_elements ...

Avoid getter and setter methods.

Yes

person.age = 42

No

person.set_age(42)

Imports

Import entire modules instead of individual symbols within a module. For
example, for a top-level module canteen that has a file canteen/sessions.py,

Yes

import canteen
import canteen.sessions
from canteen import sessions

No

from canteen import get_user  # Symbol from canteen/__init__.py
from canteen.sessions import get_session  # Symbol from canteen/sessions.py

Exception: For third-party code where documentation explicitly says to import individual symbols.

Rationale: Avoids circular imports. See here.

Put all imports at the top of the page with three sections, each separated by a blank line, in this order:

    System imports
    Third-party imports
    Local source tree imports

Rationale: Makes it clear where each module is coming from.



Multiline docstrings should include

    Summary line
    Use case, if appropriate
    Args
    Return type and semantics, unless None is returned

"""Train a model to classify Foos and Bars.

Usage::

    >>> import klassify
    >>> data = [("green", "foo"), ("orange", "bar")]
    >>> classifier = klassify.train(data)

:param train_data: A list of tuples of the form ``(color, label)``.
:rtype: A :class:`Classifier <Classifier>`
"""

Notes

    Use action words ("Return") rather than descriptions ("Returns").
    Document __init__ methods in the docstring for the class.

class Person(object):
    """A simple representation of a human being.

    :param name: A string, the person's name.
    :param age: An int, the person's age.
    """
    def __init__(self, name, age):
        self.name = name
        self.age = age


