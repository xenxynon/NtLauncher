.class public final Lcom/android/quickstep/utils/SplitScreenModeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/utils/SplitScreenModeHelper;

.field private static final SPLIT_SCREEN_MODE_BLOCKLIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/quickstep/utils/SplitScreenModeHelper;

    invoke-direct {v0}, Lcom/android/quickstep/utils/SplitScreenModeHelper;-><init>()V

    sput-object v0, Lcom/android/quickstep/utils/SplitScreenModeHelper;->INSTANCE:Lcom/android/quickstep/utils/SplitScreenModeHelper;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/nothing/launcher/NTLauncherApplication;->i:Lcom/nothing/launcher/NTLauncherApplication$a;

    invoke-virtual {v1}, Lcom/nothing/launcher/NTLauncherApplication$a;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.nothing.wallpaper"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/quickstep/utils/SplitScreenModeHelper;->SPLIT_SCREEN_MODE_BLOCKLIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final supportSplitScreenMode(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/quickstep/utils/SplitScreenModeHelper;->SPLIT_SCREEN_MODE_BLOCKLIST:[Ljava/lang/String;

    invoke-static {v0, p0}, Lo5/c;->k([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
