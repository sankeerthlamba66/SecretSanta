﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SecretSanta.Models.Logger
{
    public interface ILoggerManager
    {
        void Loginfo (string message);
        void LogWarning (string message);
        void LogDebug(string message);
        void LogError(string message);
        
    }
}
