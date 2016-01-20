<?php

namespace spec\CiTest\Service;

use PhpSpec\ObjectBehavior;
use Prophecy\Argument;

class TestSpec extends ObjectBehavior
{
    function it_is_initializable()
    {
        $this->shouldHaveType('CiTest\Service\Test');
    }

    function it_should_test_it()
    {
        $this->testIt('car')->shouldReturn('car - tested');
    }
}
