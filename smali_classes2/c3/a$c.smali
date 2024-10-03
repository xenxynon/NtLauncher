.class public final Lc3/a$c;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:D


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lc3/a$c;->d:I

    return p0
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lc3/a$c;->e:D

    return-wide v0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lc3/a$c;->a:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lc3/a$c;->b:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lc3/a$c;->c:I

    return p0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lc3/a$c;->d:I

    return-void
.end method

.method public final g(D)V
    .locals 0

    iput-wide p1, p0, Lc3/a$c;->e:D

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lc3/a$c;->a:I

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lc3/a$c;->b:I

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lc3/a$c;->c:I

    return-void
.end method
