.class final Lv3/a$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Landroid/content/res/Resources;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lv3/a;


# direct methods
.method constructor <init>(Lv3/a;)V
    .locals 0

    iput-object p1, p0, Lv3/a$b;->g:Lv3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lo3/c;->a:Lo3/c;

    invoke-virtual {v0}, Lo3/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lv3/a$b;->g:Lv3/a;

    invoke-virtual {p0}, Lv3/a;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv3/a$b;->a()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
