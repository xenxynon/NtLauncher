.class public final Ln5/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/e;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln5/e<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private g:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ly5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/a<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/u;->g:Ly5/a;

    sget-object p1, Ln5/r;->a:Ln5/r;

    iput-object p1, p0, Ln5/u;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object p0, p0, Ln5/u;->h:Ljava/lang/Object;

    sget-object v0, Ln5/r;->a:Ln5/r;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ln5/u;->h:Ljava/lang/Object;

    sget-object v1, Ln5/r;->a:Ln5/r;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln5/u;->g:Ly5/a;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ly5/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ln5/u;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ln5/u;->g:Ly5/a;

    :cond_0
    iget-object p0, p0, Ln5/u;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ln5/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln5/u;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0
.end method
