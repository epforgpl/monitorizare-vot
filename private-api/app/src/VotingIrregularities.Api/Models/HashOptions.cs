namespace VotingIrregularities.Api.Models
{
    public class HashOptions
    {
        public string Salt { get; set; }
        public bool HashPins { get; set; }
        public bool VerifyDeviceId { get; set; } // TODO Krzysztof: a bit of a hack: was easier to put it here, doesn't fully belong here
    }
}
