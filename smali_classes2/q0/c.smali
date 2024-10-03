.class public final synthetic Lq0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lq0/e;

.field public final synthetic h:Lq0/e$b;


# direct methods
.method public synthetic constructor <init>(Lq0/e;Lq0/e$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/c;->g:Lq0/e;

    iput-object p2, p0, Lq0/c;->h:Lq0/e$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lq0/c;->g:Lq0/e;

    iget-object p0, p0, Lq0/c;->h:Lq0/e$b;

    invoke-static {v0, p0}, Lq0/e;->a(Lq0/e;Lq0/e$b;)V

    return-void
.end method
