.class public Li6/y1;
.super Li6/d2;
.source "SourceFile"

# interfaces
.implements Li6/z;


# instance fields
.field private final h:Z


# direct methods
.method public constructor <init>(Li6/v1;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Li6/d2;-><init>(Z)V

    invoke-virtual {p0, p1}, Li6/d2;->j0(Li6/v1;)V

    invoke-direct {p0}, Li6/y1;->M0()Z

    move-result p1

    iput-boolean p1, p0, Li6/y1;->h:Z

    return-void
.end method

.method private final M0()Z
    .locals 3

    invoke-virtual {p0}, Li6/d2;->f0()Li6/t;

    move-result-object p0

    instance-of v0, p0, Li6/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Li6/u;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Li6/c2;->A()Li6/d2;

    move-result-object p0

    :goto_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Li6/d2;->c0()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p0}, Li6/d2;->f0()Li6/t;

    move-result-object p0

    instance-of v2, p0, Li6/u;

    if-eqz v2, :cond_4

    check-cast p0, Li6/u;

    goto :goto_2

    :cond_4
    move-object p0, v1

    :goto_2
    if-nez p0, :cond_5

    move-object p0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Li6/c2;->A()Li6/d2;

    move-result-object p0

    :goto_3
    if-nez p0, :cond_2

    return v0
.end method


# virtual methods
.method public c0()Z
    .locals 0

    iget-boolean p0, p0, Li6/y1;->h:Z

    return p0
.end method

.method public d0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
