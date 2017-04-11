module mtd.utils;

import std.format : format;

enum SizeType {
    BASE2,
    BASE10,
    MIXED
}

string convertSize(ulong size, SizeType st = SizeType.MIXED) {
    enum : ulong {
        B_KB = 1000,
        B_MB = 1000^2,
        B_GB = 1000^3,
        B_TB = 1000^4,
        B_PB = 1000^5,
        B_EB = 1000^6,
        B_ZB = 1000^7,
        B_YB = 1000^8,
        KB = 1024,
        MB = 1000 * 1024,
        GB = 1000^2 * 1024,
        TB = 1000^3 * 1024,
        PB = 1000^4 * 1024,
        EB = 1000^5 * 1024,
        ZB = 1000^6 * 1024,
        YB = 1000^7 * 1024,
        KiB = 1024,
        MiB = 1024^2,
        GiB = 1024^3,
        TiB = 1024^4,
        PiB = 1024^5,
        EiB = 1024^6,
        ZiB = 1024^7,
        YiB = 1024^8
    }

    final switch(st)
    {
        case SizeType.MIXED:
            if(size > YB) {
                if(size > 100 * YB) return format("%d YB", size / YB);
                else if (size > 10 * YB) return format("%0.1f YB", size / YB);
                else return format("%0.2f YB", size / YB);
            } else if(size > ZB) {
                if(size > 100 * ZB) return format("%d ZB", size / ZB);
                else if (size > 10 * ZB) return format("%0.1f ZB", size / ZB);
                else return format("%0.2f ZB", size / ZB);
            } else if(size > EB) {
                if(size > 100 * EB) return format("%d EB", size / EB);
                else if (size > 10 * EB) return format("%0.1f EB", size / EB);
                else return format("%0.2f EB", size / EB);
            } else if(size > PB) {
                if(size > 100 * PB) return format("%d PB", size / PB);
                else if (size > 10 * PB) return format("%0.1f PB", size / PB);
                else return format("%0.2f PB", size / PB);
            } else if(size > TB) {
                if(size > 100 * TB) return format("%d TB", size / TB);
                else if (size > 10 * TB) return format("%0.1f TB", size / TB);
                else return format("%0.2f TB", size / TB);
            } else if(size > GB) {
                if(size > 100 * GB) return format("%d GB", size / GB);
                else if (size > 10 * GB) return format("%0.1f GB", size / GB);
                else return format("%0.2f GB", size / GB);
            } else if(size > MB) {
                if(size > 100 * MB) return format("%d MB", size / MB);
                else if (size > 10 * MB) return format("%0.1f MB", size / MB);
                else return format("%0.2f MB", size / MB);
            } else if(size > KB) {
                if(size > 100 * KB) return format("%d KB", size / KB);
                else if (size > 10 * KB) return format("%0.1f KB", size / KB);
                else return format("%0.2f KB", size / KB);
            } else {
                return format("%d B", size);
            }

        case SizeType.BASE2:
            if(size > YiB) {
                if(size > 100 * YiB) return format("%d YiB", size / YiB);
                else if (size > 10 * YiB) return format("%0.1f YiB", size / YiB);
                else return format("%0.2f YiB", size / YiB);
            } else if(size > ZiB) {
                if(size > 100 * ZiB) return format("%d ZiB", size / ZiB);
                else if (size > 10 * ZiB) return format("%0.1f ZiB", size / ZiB);
                else return format("%0.2f ZiB", size / ZiB);
            } else if(size > EiB) {
                if(size > 100 * EiB) return format("%d EiB", size / EiB);
                else if (size > 10 * EiB) return format("%0.1f EiB", size / EiB);
                else return format("%0.2f EiB", size / EiB);
            } else if(size > PiB) {
                if(size > 100 * PiB) return format("%d PiB", size / PiB);
                else if (size > 10 * PiB) return format("%0.1f PiB", size / PiB);
                else return format("%0.2f PiB", size / PiB);
            } else if(size > TiB) {
                if(size > 100 * TiB) return format("%d TiB", size / TiB);
                else if (size > 10 * TiB) return format("%0.1f TiB", size / TiB);
                else return format("%0.2f TiB", size / TiB);
            } else if(size > GiB) {
                if(size > 100 * GiB) return format("%d GiB", size / GiB);
                else if (size > 10 * GiB) return format("%0.1f GiB", size / GiB);
                else return format("%0.2f GiB", size / GiB);
            } else if(size > MiB) {
                if(size > 100 * MiB) return format("%d MiB", size / MiB);
                else if (size > 10 * MiB) return format("%0.1f MiB", size / MiB);
                else return format("%0.2f MiB", size / MiB);
            } else if(size > KiB) {
                if(size > 100 * KiB) return format("%d KiB", size / KiB);
                else if (size > 10 * KiB) return format("%0.1f KiB", size / KiB);
                else return format("%0.2f KiB", size / KiB);
            } else {
                return format("%d B", size);
            }

        case SizeType.BASE10:
            if(size > B_YB) {
                if(size > 100 * B_YB) return format("%d YB", size / B_YB);
                else if (size > 10 * B_YB) return format("%0.1f YB", size / B_YB);
                else return format("%0.2f YB", size / B_YB);
            } else if(size > B_ZB) {
                if(size > 100 * B_ZB) return format("%d ZB", size / B_ZB);
                else if (size > 10 * B_ZB) return format("%0.1f ZB", size / B_ZB);
                else return format("%0.2f ZB", size / B_ZB);
            } else if(size > B_EB) {
                if(size > 100 * B_EB) return format("%d EB", size / B_EB);
                else if (size > 10 * B_EB) return format("%0.1f EB", size / B_EB);
                else return format("%0.2f EB", size / B_EB);
            } else if(size > B_PB) {
                if(size > 100 * B_PB) return format("%d PB", size / B_PB);
                else if (size > 10 * B_PB) return format("%0.1f PB", size / B_PB);
                else return format("%0.2f PB", size / B_PB);
            } else if(size > B_TB) {
                if(size > 100 * B_TB) return format("%d TB", size / B_TB);
                else if (size > 10 * B_TB) return format("%0.1f TB", size / B_TB);
                else return format("%0.2f TB", size / B_TB);
            } else if(size > B_GB) {
                if(size > 100 * B_GB) return format("%d GB", size / B_GB);
                else if (size > 10 * B_GB) return format("%0.1f GB", size / B_GB);
                else return format("%0.2f GB", size / B_GB);
            } else if(size > B_MB) {
                if(size > 100 * B_MB) return format("%d MB", size / B_MB);
                else if (size > 10 * B_MB) return format("%0.1f MB", size / B_MB);
                else return format("%0.2f MB", size / B_MB);
            } else if(size > B_KB) {
                if(size > 100 * B_KB) return format("%d KB", size / B_KB);
                else if (size > 10 * B_KB) return format("%0.1f KB", size / B_KB);
                else return format("%0.2f KB", size / B_KB);
            } else {
                return format("%d B", size);
            }
    }
}
