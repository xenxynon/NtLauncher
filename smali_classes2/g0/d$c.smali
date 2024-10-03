.class final Lg0/d$c;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/d;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Landroid/graphics/Insets;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lg0/d;


# direct methods
.method constructor <init>(Lg0/d;)V
    .locals 0

    iput-object p1, p0, Lg0/d$c;->g:Lg0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Lg0/d$c;->g:Lg0/d;

    invoke-static {p0}, Lg0/d;->d(Lg0/d;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lg0/d$c;->a()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method
