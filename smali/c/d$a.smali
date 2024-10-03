.class public final Lc/d$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d;-><init>(Landroid/content/Context;Landroid/view/Choreographer;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d;


# direct methods
.method constructor <init>(Lc/d;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lc/d$a;->a:Lc/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lc/d$a;->a:Lc/d;

    invoke-static {p0}, Lc/d;->E(Lc/d;)V

    return-void
.end method
