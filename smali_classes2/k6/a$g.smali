.class final Lk6/a$g;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6/a;->e(Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.channels.AbstractChannel"
    f = "AbstractChannel.kt"
    l = {
        0x279
    }
    m = "receiveCatching-JP2dKIU"
.end annotation


# instance fields
.field synthetic g:Ljava/lang/Object;

.field final synthetic h:Lk6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field i:I


# direct methods
.method constructor <init>(Lk6/a;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a<",
            "TE;>;",
            "Lq5/d<",
            "-",
            "Lk6/a$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk6/a$g;->h:Lk6/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lk6/a$g;->g:Ljava/lang/Object;

    iget p1, p0, Lk6/a$g;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lk6/a$g;->i:I

    iget-object p1, p0, Lk6/a$g;->h:Lk6/a;

    invoke-virtual {p1, p0}, Lk6/a;->e(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lk6/j;->b(Ljava/lang/Object;)Lk6/j;

    move-result-object p0

    return-object p0
.end method
