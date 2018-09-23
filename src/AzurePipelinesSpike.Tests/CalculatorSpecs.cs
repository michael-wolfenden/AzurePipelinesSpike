using FluentAssertions;
using Xunit;

namespace AzurePipelinesSpike.Tests
{
    public class CalculatorSpecs
    {
        [Fact]
        public void OnePlusOneEqualsTwo() =>
            Calculator.Add(1, 1).Should().Be(2);
    }
}
