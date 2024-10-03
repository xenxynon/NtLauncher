.class public final Lz4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz4/e;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/text/SimpleDateFormat;

.field private static final d:I

.field private static final e:I

.field private static final f:J

.field private static final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz4/e;

    invoke-direct {v0}, Lz4/e;-><init>()V

    sput-object v0, Lz4/e;->a:Lz4/e;

    const-string v0, "MemoryInfoHelper"

    sput-object v0, Lz4/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lz4/e;->c:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x400

    sput v0, Lz4/e;->d:I

    mul-int/lit16 v0, v0, 0x200

    sput v0, Lz4/e;->e:I

    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lz4/e;->f:J

    const/16 v0, 0xa

    sput v0, Lz4/e;->g:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lz4/e;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lz4/e;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    return-void
.end method
