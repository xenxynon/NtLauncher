.class final Li6/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final g:Li6/i0;

.field private final h:Li6/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/n<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li6/i0;Li6/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/i0;",
            "Li6/n<",
            "-",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/o2;->g:Li6/i0;

    iput-object p2, p0, Li6/o2;->h:Li6/n;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Li6/o2;->h:Li6/n;

    iget-object p0, p0, Li6/o2;->g:Li6/i0;

    sget-object v1, Ln5/t;->a:Ln5/t;

    invoke-interface {v0, p0, v1}, Li6/n;->y(Li6/i0;Ljava/lang/Object;)V

    return-void
.end method
