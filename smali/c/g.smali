.class public final synthetic Lc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# instance fields
.field public final synthetic g:Lc/r;

.field public final synthetic h:Lc/r$e;


# direct methods
.method public synthetic constructor <init>(Lc/r;Lc/r$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/g;->g:Lc/r;

    iput-object p2, p0, Lc/g;->h:Lc/r$e;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lc/g;->g:Lc/r;

    iget-object p0, p0, Lc/g;->h:Lc/r$e;

    invoke-static {v0, p0}, Lc/r;->c(Lc/r;Lc/r$e;)V

    return-void
.end method
