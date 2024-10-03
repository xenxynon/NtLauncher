.class public final enum Lj2/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj2/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lj2/a$a;

.field public static final enum i:Lj2/a;

.field public static final enum j:Lj2/a;

.field public static final enum k:Lj2/a;

.field public static final enum l:Lj2/a;

.field public static final enum m:Lj2/a;

.field public static final enum n:Lj2/a;

.field public static final enum o:Lj2/a;

.field public static final enum p:Lj2/a;

.field public static final enum q:Lj2/a;

.field public static final enum r:Lj2/a;

.field public static final enum s:Lj2/a;

.field public static final enum t:Lj2/a;

.field public static final enum u:Lj2/a;

.field public static final enum v:Lj2/a;

.field private static final synthetic w:[Lj2/a;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj2/a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->i:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "AIRPLANE_MODE_CHANGED"

    const/4 v2, 0x1

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->j:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "HEADSET_PLUG"

    const/4 v2, 0x2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->k:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "BATTERY_LOW"

    const/4 v2, 0x3

    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->l:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "DATE_CHANGED"

    const/4 v2, 0x4

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->m:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "TIME_CHANGED"

    const/4 v2, 0x5

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->n:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "TIME_TICK"

    const/4 v2, 0x6

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->o:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "TIMEZONE_CHANGE"

    const/4 v2, 0x7

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->p:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "DEVICE_STORAGE_LOW"

    const/16 v2, 0x8

    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->q:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "USER_UNLOCKED"

    const/16 v2, 0x9

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->r:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "SCREEN_ON"

    const/16 v2, 0xa

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->s:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "POWER_CONNECTED"

    const/16 v2, 0xb

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->t:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "SCREEN_OFF"

    const/16 v2, 0xc

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->u:Lj2/a;

    new-instance v0, Lj2/a;

    const-string v1, "USER_PRESENT"

    const/16 v2, 0xd

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1, v2, v3}, Lj2/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj2/a;->v:Lj2/a;

    invoke-static {}, Lj2/a;->a()[Lj2/a;

    move-result-object v0

    sput-object v0, Lj2/a;->w:[Lj2/a;

    new-instance v0, Lj2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj2/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lj2/a;->h:Lj2/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj2/a;->g:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lj2/a;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lj2/a;

    sget-object v1, Lj2/a;->i:Lj2/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->j:Lj2/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->k:Lj2/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->l:Lj2/a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->m:Lj2/a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->n:Lj2/a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->o:Lj2/a;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->p:Lj2/a;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->q:Lj2/a;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->r:Lj2/a;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->s:Lj2/a;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->t:Lj2/a;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->u:Lj2/a;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lj2/a;->v:Lj2/a;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj2/a;
    .locals 1

    const-class v0, Lj2/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj2/a;

    return-object p0
.end method

.method public static values()[Lj2/a;
    .locals 1

    sget-object v0, Lj2/a;->w:[Lj2/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj2/a;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj2/a;->g:Ljava/lang/String;

    return-object p0
.end method
