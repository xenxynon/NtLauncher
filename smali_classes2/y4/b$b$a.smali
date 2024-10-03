.class public final Ly4/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly4/b$b;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic g:Lkotlinx/coroutines/flow/f;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;)V
    .locals 0

    iput-object p1, p0, Ly4/b$b$a;->g:Lkotlinx/coroutines/flow/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Ly4/b$b$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ly4/b$b$a$a;

    iget v1, v0, Ly4/b$b$a$a;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ly4/b$b$a$a;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Ly4/b$b$a$a;

    invoke-direct {v0, p0, p2}, Ly4/b$b$a$a;-><init>(Ly4/b$b$a;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Ly4/b$b$a$a;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ly4/b$b$a$a;->h:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Ly4/b$b$a;->g:Lkotlinx/coroutines/flow/f;

    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    sget-object p2, Ly4/b;->h:Ly4/b;

    invoke-static {p2, p1}, Ly4/b;->a(Ly4/b;Landroidx/datastore/preferences/core/Preferences;)Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Ly4/b$b$a$a;->h:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
