using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Settings
{
    public String Text1 { get; set; }
    public String Text2 { get; set; }
    public String Header { get; set; }
    public String Footer { get; set; }
}

    
    public class Manager
    {
        
        public Manager()
            {

            }
        public static Settings LoadSettings(string FilePath)
        {
          
            Settings settings = new Settings();
            try
            {
               
                System.Xml.Serialization.XmlSerializer reader = new System.Xml.Serialization.XmlSerializer(typeof(Settings));
                System.IO.StreamReader file = new System.IO.StreamReader(FilePath);
                settings = (Settings)reader.Deserialize(file);
                file.Close();
                return settings;

            }
            catch
            {
                return settings;
            }

        }
        public static void SaveSettings(string FilePath, Settings SettingsObj)
        {
            System.Xml.Serialization.XmlSerializer writer =new System.Xml.Serialization.XmlSerializer(typeof(Settings));
            System.IO.FileStream file = System.IO.File.Create(FilePath);
            writer.Serialize(file, SettingsObj);
            file.Close();
        }
    }
