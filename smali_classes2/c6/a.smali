.class public abstract Lc6/a;
.super Lc6/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc6/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    invoke-virtual {p0}, Lc6/a;->c()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public abstract c()Ljava/util/Random;
.end method
