.class public final synthetic Lo4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo4/d;->g:I

    iput p2, p0, Lo4/d;->h:I

    iput p3, p0, Lo4/d;->i:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    iget v0, p0, Lo4/d;->g:I

    iget v1, p0, Lo4/d;->h:I

    iget p0, p0, Lo4/d;->i:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->a(IIILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
