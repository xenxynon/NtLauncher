.class public final synthetic Lcom/nothing/launcher/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/widget/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final newView(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/widget/c;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/nothing/launcher/widget/NTDockSearchBarLayout;->a(Landroid/content/Context;Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;

    move-result-object p0

    return-object p0
.end method
