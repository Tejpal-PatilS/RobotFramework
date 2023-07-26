*** Test Cases ***
Template with FOR and IF
    [Template]    Example keyword
    FOR    ${item}    IN    @{ITEMS}
        IF  ${item} < 5
            ${item}    2nd arg
        END
    END