using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Linq;
using System.Threading.Tasks;
using VotingIrregularities.Domain.Models;
using VotingIrregularities.Domain.ValueObjects;

namespace VotingIrregularities.Api.Services
{
    public class SectieDevotareDBService : ISectieDeVotareService
    {
        private readonly VotingContext _context;
        private readonly ILogger _logger;

        public SectieDevotareDBService(VotingContext context, ILogger logger)
        {
            _context = context;
            _logger = logger;
        }

        public async Task<int> GetSingleSectieDeVotare(string codJudet, int numarSectie)
        {
            var idSectie = await
            _context.PollingStations
                .Join(_context.Counties,
                    station => station.IdCounty,
                    county => county.Id,
                    (station, county) => new { station = station, county = county })
                .Where(
                    a =>
                        a.county.Code == codJudet &&
                        a.station.Number == numarSectie)
                .Select(a => a.station.Id)
                .ToListAsync();

            if (idSectie.Count == 0)
                throw new ArgumentException($"Sectie inexistenta pentru: {new { codJudet, numarSectie }}");


            if (idSectie.Count > 1)
                throw new ArgumentException($"S-au gasit mai multe sectii pentru: {new { codJudet, idSectie }}");

            return idSectie.Single();
        }
    }
}
