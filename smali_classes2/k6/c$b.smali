.class public final Lk6/c$b;
.super Lkotlinx/coroutines/internal/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6/c;->f(Lk6/y;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lkotlinx/coroutines/internal/o;

.field final synthetic e:Lk6/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/o;Lk6/c;)V
    .locals 0

    iput-object p1, p0, Lk6/c$b;->d:Lkotlinx/coroutines/internal/o;

    iput-object p2, p0, Lk6/c$b;->e:Lk6/c;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/o$a;-><init>(Lkotlinx/coroutines/internal/o;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/o;

    invoke-virtual {p0, p1}, Lk6/c$b;->i(Lkotlinx/coroutines/internal/o;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public i(Lkotlinx/coroutines/internal/o;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk6/c$b;->e:Lk6/c;

    invoke-virtual {p0}, Lk6/c;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/n;->a()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
