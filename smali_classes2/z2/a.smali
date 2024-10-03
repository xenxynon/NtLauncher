.class public final synthetic Lz2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/a;->g:Landroid/content/Context;

    iput-boolean p2, p0, Lz2/a;->h:Z

    iput-object p3, p0, Lz2/a;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz2/a;->g:Landroid/content/Context;

    iget-boolean v1, p0, Lz2/a;->h:Z

    iget-object p0, p0, Lz2/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lz2/b;->a(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method
