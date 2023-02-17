local _, JDT = ...

JDT.Templates = JDT.Templates  or {}

JDT.Templates.JodsCompanionData = {
    WeakAuras = {
        slugs = {          
        },
        stash = {
        },
        stopmotionFiles = {
    },
    },
  Plater = {
    slugs = {
  },
    stash = {
    },
}
}
JDT.Templates.WeakAurasCompanionSlugData = {
        name = [=[]=], --title
        author = [=[Jods]=],
        encoded = [=[]=],
        wagoVersion = [=[42]=],
        wagoSemver = [=[1.0.0-42]=],
        source = [=[Wago]=],
        versionNote = [=[ChangesAsRequested]=],

}

JDT.DataToExport = {
  d = {...}, -- required: primary aura data
  c = { {...}, {...}, ...} -- optional: array of child aura data
}