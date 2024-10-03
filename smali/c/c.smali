.class public final synthetic Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lc/d;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lc/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c;->g:Lc/d;

    iput-boolean p2, p0, Lc/c;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/c;->g:Lc/d;

    iget-boolean p0, p0, Lc/c;->h:Z

    invoke-static {v0, p0}, Lc/d;->C(Lc/d;Z)V

    return-void
.end method
