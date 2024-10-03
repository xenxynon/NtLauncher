.class public final synthetic Lc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lc/r$e;

.field public final synthetic h:Lc/r$d;

.field public final synthetic i:Lc/r$d;


# direct methods
.method public synthetic constructor <init>(Lc/r$e;Lc/r$d;Lc/r$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/s;->g:Lc/r$e;

    iput-object p2, p0, Lc/s;->h:Lc/r$d;

    iput-object p3, p0, Lc/s;->i:Lc/r$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/s;->g:Lc/r$e;

    iget-object v1, p0, Lc/s;->h:Lc/r$d;

    iget-object p0, p0, Lc/s;->i:Lc/r$d;

    invoke-static {v0, v1, p0}, Lc/r$e;->a(Lc/r$e;Lc/r$d;Lc/r$d;)V

    return-void
.end method
