﻿using System;
using System.Security.Cryptography;
using System.Text;
using Microsoft.Extensions.Options;
using VotingIrregularities.Api.Models;

namespace VotingIrregularities.Api.Services
{
    /// <inheritdoc />
    public class HashService : IHashService
    {
        public HashService(IOptions<HashOptions> options)
        {
            Salt = options.Value.Salt;
            Enabled = options.Value.HashPins;
            VerifyDeviceId = options.Value.VerifyDeviceId;
        }

        public string Salt { get; set; }
        public bool Enabled { get; set; }
        public bool VerifyDeviceId { get; set; }

        public string GetHash(string clearString)
        {
            if (!Enabled) {
                return clearString;
            }

            // SHA512 is disposable by inheritance.  
            using (var sha256 = SHA256.Create())
            {
                // Send a sample text to hash.  
                var hashedBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(clearString + Salt));
                // Get the hashed string.  
                return BitConverter.ToString(hashedBytes).Replace("-", "").ToLower();
            }
        }
    }
}
