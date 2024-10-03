.class public final Lcom/nothing/launcher/notification/NotificationMainLockedView$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/notification/NotificationMainLockedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nothing/launcher/notification/NotificationMainLockedView;

.field final synthetic b:F


# direct methods
.method constructor <init>(Lcom/nothing/launcher/notification/NotificationMainLockedView;F)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/notification/NotificationMainLockedView$a;->a:Lcom/nothing/launcher/notification/NotificationMainLockedView;

    iput p2, p0, Lcom/nothing/launcher/notification/NotificationMainLockedView$a;->b:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/notification/NotificationMainLockedView$a;->a:Lcom/nothing/launcher/notification/NotificationMainLockedView;

    invoke-static {p1}, Lcom/nothing/launcher/notification/NotificationMainLockedView;->a(Lcom/nothing/launcher/notification/NotificationMainLockedView;)Landroid/graphics/Rect;

    move-result-object p1

    iget p0, p0, Lcom/nothing/launcher/notification/NotificationMainLockedView$a;->b:F

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
