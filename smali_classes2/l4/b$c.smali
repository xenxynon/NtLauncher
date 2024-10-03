.class public final Ll4/b$c;
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

    iput-object p1, p0, Ll4/b$c;->a:Ll4/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p0, p0, Ll4/b$c;->a:Ll4/b;

    invoke-static {p0}, Ll4/b;->a(Ll4/b;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "context.contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ll4/b;->c(Ll4/b;Landroid/content/ContentResolver;)Z

    move-result p1

    invoke-static {p0, p1}, Ll4/b;->e(Ll4/b;Z)V

    return-void
.end method
