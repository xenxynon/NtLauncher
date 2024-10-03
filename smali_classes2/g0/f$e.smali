.class public Lg0/f$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private final g:I

.field private h:Z


# direct methods
.method public constructor <init>(IIIIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg0/f$e;->a:I

    iput p2, p0, Lg0/f$e;->b:I

    iput p3, p0, Lg0/f$e;->c:I

    iput p4, p0, Lg0/f$e;->d:I

    iput p5, p0, Lg0/f$e;->e:F

    iput p6, p0, Lg0/f$e;->f:F

    iput p1, p0, Lg0/f$e;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg0/f$e;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIIFFILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lg0/f$e;-><init>(IIIIFF)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lg0/f$e;->b:I

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lg0/f$e;->f:F

    return p0
.end method

.method public final c()F
    .locals 2

    iget v0, p0, Lg0/f$e;->c:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lg0/f$e;->k()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public final d()F
    .locals 2

    iget v0, p0, Lg0/f$e;->a:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lg0/f$e;->e()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lg0/f$e;->b:I

    iget p0, p0, Lg0/f$e;->a:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lg0/f$e;->c:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lg0/f$e;->d:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lg0/f$e;->a:I

    return p0
.end method

.method public final i()F
    .locals 0

    iget p0, p0, Lg0/f$e;->e:F

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lg0/f$e;->h:Z

    return p0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lg0/f$e;->d:I

    iget p0, p0, Lg0/f$e;->c:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lg0/f$e;->b:I

    return-void
.end method

.method public final m(F)V
    .locals 0

    iput p1, p0, Lg0/f$e;->f:F

    return-void
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lg0/f$e;->c:I

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lg0/f$e;->d:I

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lg0/f$e;->a:I

    return-void
.end method

.method public final q(F)V
    .locals 0

    iput p1, p0, Lg0/f$e;->e:F

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Lg0/f$e;->h:Z

    return-void
.end method
