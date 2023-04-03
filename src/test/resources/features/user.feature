Feature: User - Login and register

  Scenario Outline: Register and Login
    Given I have opened <browser>
    Given I have entered MailChimp website
    Given I have accepted cookies
    Given I input email "<email>"
    Given I input username "<username>"
    Given I input password "<password>"
    When I press sign up
    Then I have made an account "<state>"

    Examples:
      | browser | email             | username                                                                                                                  | password      | state   |
      | chrome  | testMex@gmail.com | random                                                                                                                    | 1number1%CHAR | success |
      | chrome  | testMex@gmail.com | 1234567891012345678910123456789101234567891012345678910123456789101234567891012345678910123456789101234567891012345678910 | 1number1%CHAR | fail    |
      | chrome  | testMex@gmail.com | testMex1                                                                                                                  | 1number1%CHAR | fail    |
      | chrome  |                   | random                                                                                                                    | 1number1%CHAR | fail    |
      | edge    | testMex@gmail.com | random                                                                                                                    | 1number1%CHAR | success |
      | edge    | testMex@gmail.com | 1234567891012345678910123456789101234567891012345678910123456789101234567891012345678910123456789101234567891012345678910 | 1number1%CHAR | fail    |
      | edge    | testMex@gmail.com | testMex1                                                                                                                  | 1number1%CHAR | fail    |
      | edge    |                   | random                                                                                                                    | 1number1%CHAR | fail    |
