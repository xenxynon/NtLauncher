.class final Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lb5/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$b;->g:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lb5/a;
    .locals 1

    new-instance v0, Lb5/a;

    iget-object p0, p0, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$b;->g:Landroid/content/Context;

    invoke-direct {v0, p0}, Lb5/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/widget/LocalWallpaperColorsExtractor$b;->a()Lb5/a;

    move-result-object p0

    return-object p0
.end method
