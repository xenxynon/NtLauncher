.class final Lk6/a$e;
.super Li6/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final g:Lk6/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/u<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic h:Lk6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk6/a;Lk6/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/u<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lk6/a$e;->h:Lk6/a;

    invoke-direct {p0}, Li6/e;-><init>()V

    iput-object p2, p0, Lk6/a$e;->g:Lk6/u;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lk6/a$e;->g:Lk6/u;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lk6/a$e;->h:Lk6/a;

    invoke-virtual {p0}, Lk6/a;->P()V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lk6/a$e;->a(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveReceiveOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk6/a$e;->g:Lk6/u;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
