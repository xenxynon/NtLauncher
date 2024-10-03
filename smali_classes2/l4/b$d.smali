.class public final Ll4/b$d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll4/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll4/b;


# direct methods
.method constructor <init>(Ll4/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ll4/b$d;->a:Ll4/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Ll4/b$d;->a:Ll4/b;

    invoke-static {p0}, Ll4/b;->d(Ll4/b;)I

    move-result p1

    invoke-static {p0, p1}, Ll4/b;->f(Ll4/b;I)V

    return-void
.end method
