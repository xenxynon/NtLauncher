.class final Lj1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:F

.field private d:J

.field private e:I


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Lj1/e;)J
    .locals 2

    iget-wide v0, p0, Lj1/e;->d:J

    return-wide v0
.end method

.method static synthetic c(Lj1/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj1/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lj1/e;)I
    .locals 0

    iget p0, p0, Lj1/e;->a:I

    return p0
.end method

.method static synthetic e(Lj1/e;)F
    .locals 0

    iget p0, p0, Lj1/e;->c:F

    return p0
.end method

.method static synthetic f(Lj1/e;)I
    .locals 0

    iget p0, p0, Lj1/e;->e:I

    return p0
.end method

.method static synthetic g(Lj1/e;)V
    .locals 1

    iget v0, p0, Lj1/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj1/e;->e:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;F)V
    .locals 0

    iput p1, p0, Lj1/e;->a:I

    iput-object p2, p0, Lj1/e;->b:Ljava/lang/String;

    iput p3, p0, Lj1/e;->c:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lj1/e;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lj1/e;->e:I

    return-void
.end method
