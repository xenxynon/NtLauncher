.class public final Lg4/g$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/g$c;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
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

    iput-object p1, p0, Lg4/g$c$a;->g:Lkotlinx/coroutines/flow/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lg4/g$c$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg4/g$c$a$a;

    iget v1, v0, Lg4/g$c$a$a;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg4/g$c$a$a;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg4/g$c$a$a;

    invoke-direct {v0, p0, p2}, Lg4/g$c$a$a;-><init>(Lg4/g$c$a;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lg4/g$c$a$a;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lg4/g$c$a$a;->h:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lg4/g$c$a;->g:Lkotlinx/coroutines/flow/f;

    move-object p2, p1

    check-cast p2, [Lcom/android/launcher3/model/data/AppInfo;

    array-length p2, p2

    if-nez p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    xor-int/2addr p2, v3

    if-eqz p2, :cond_4

    iput v3, v0, Lg4/g$c$a$a;->h:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
