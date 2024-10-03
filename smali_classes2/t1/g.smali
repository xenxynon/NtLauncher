.class public abstract Lt1/g;
.super Lt1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/g$e;,
        Lt1/g$b;,
        Lt1/g$c;,
        Lt1/g$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Z

.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lt1/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lt1/g;->a:Ljava/util/logging/Logger;

    invoke-static {}, Lt1/a0;->f()Z

    move-result v0

    sput-boolean v0, Lt1/g;->b:Z

    invoke-static {}, Lt1/a0;->d()J

    move-result-wide v0

    sput-wide v0, Lt1/g;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt1/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lt1/g$a;)V
    .locals 0

    invoke-direct {p0}, Lt1/g;-><init>()V

    return-void
.end method

.method public static A(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt1/c0;->c(II)I

    move-result p0

    invoke-static {p0}, Lt1/g;->B(I)I

    move-result p0

    return p0
.end method

.method public static B(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static C(IJ)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1, p2}, Lt1/g;->D(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static D(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static G(Ljava/io/OutputStream;I)Lt1/g;
    .locals 1

    new-instance v0, Lt1/g$e;

    invoke-direct {v0, p0, p1}, Lt1/g$e;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static H([B)Lt1/g;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lt1/g;->I([BII)Lt1/g;

    move-result-object p0

    return-object p0
.end method

.method public static I([BII)Lt1/g;
    .locals 1

    new-instance v0, Lt1/g$c;

    invoke-direct {v0, p0, p1, p2}, Lt1/g$c;-><init>([BII)V

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lt1/g;->b:Z

    return v0
.end method

.method static synthetic c()J
    .locals 2

    sget-wide v0, Lt1/g;->c:J

    return-wide v0
.end method

.method public static e(IZ)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1}, Lt1/g;->f(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static g(ILt1/e;)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1}, Lt1/g;->h(Lt1/e;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(Lt1/e;)I
    .locals 0

    invoke-virtual {p0}, Lt1/e;->size()I

    move-result p0

    invoke-static {p0}, Lt1/g;->u(I)I

    move-result p0

    return p0
.end method

.method public static i(II)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1}, Lt1/g;->j(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static j(I)I
    .locals 0

    invoke-static {p0}, Lt1/g;->r(I)I

    move-result p0

    return p0
.end method

.method public static k(II)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1}, Lt1/g;->l(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static l(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static m(IJ)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1, p2}, Lt1/g;->n(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static n(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static o(IF)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1}, Lt1/g;->p(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static p(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static q(II)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1}, Lt1/g;->r(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static r(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lt1/g;->B(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static s(IJ)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1, p2}, Lt1/g;->t(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static t(J)I
    .locals 0

    invoke-static {p0, p1}, Lt1/g;->D(J)I

    move-result p0

    return p0
.end method

.method static u(I)I
    .locals 1

    invoke-static {p0}, Lt1/g;->B(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static v(ILt1/r;)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1}, Lt1/g;->w(Lt1/r;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static w(Lt1/r;)I
    .locals 0

    invoke-interface {p0}, Lt1/r;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lt1/g;->u(I)I

    move-result p0

    return p0
.end method

.method static x(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static y(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lt1/g;->A(I)I

    move-result p0

    invoke-static {p1}, Lt1/g;->z(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static z(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lt1/b0;->b(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lt1/b0$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lt1/m;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lt1/g;->u(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract E()V
.end method

.method final F(Ljava/lang/String;Lt1/b0$c;)V
    .locals 3

    sget-object v0, Lt1/g;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lt1/m;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lt1/g;->V(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lt1/g;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lt1/g$d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lt1/g$d;

    invoke-direct {p1, p0}, Lt1/g$d;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract J()I
.end method

.method public abstract K(IZ)V
.end method

.method public abstract L(ILt1/e;)V
.end method

.method public final M(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt1/g;->Q(II)V

    return-void
.end method

.method public abstract N(II)V
.end method

.method public abstract O(IJ)V
.end method

.method public final P(IF)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lt1/g;->N(II)V

    return-void
.end method

.method public abstract Q(II)V
.end method

.method public final R(IJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt1/g;->W(IJ)V

    return-void
.end method

.method public abstract S(ILt1/r;)V
.end method

.method public abstract T(ILjava/lang/String;)V
.end method

.method public abstract U(II)V
.end method

.method public abstract V(I)V
.end method

.method public abstract W(IJ)V
.end method

.method public abstract a([BII)V
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lt1/g;->J()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
