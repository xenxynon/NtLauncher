.class public final Li6/d2$d;
.super Lkotlinx/coroutines/internal/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li6/d2;->J(Ljava/lang/Object;Li6/h2;Li6/c2;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lkotlinx/coroutines/internal/o;

.field final synthetic e:Li6/d2;

.field final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/o;Li6/d2;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Li6/d2$d;->d:Lkotlinx/coroutines/internal/o;

    iput-object p2, p0, Li6/d2$d;->e:Li6/d2;

    iput-object p3, p0, Li6/d2$d;->f:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/o$a;-><init>(Lkotlinx/coroutines/internal/o;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/o;

    invoke-virtual {p0, p1}, Li6/d2$d;->i(Lkotlinx/coroutines/internal/o;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public i(Lkotlinx/coroutines/internal/o;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Li6/d2$d;->e:Li6/d2;

    invoke-virtual {p1}, Li6/d2;->g0()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Li6/d2$d;->f:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/internal/n;->a()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method
