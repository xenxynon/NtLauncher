.class public final synthetic Lcom/android/launcher3/qsb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/qsb/QsbWidgetHostView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/qsb/QsbWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/qsb/d;->g:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/qsb/d;->g:Lcom/android/launcher3/qsb/QsbWidgetHostView;

    invoke-static {p0, p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;->d(Lcom/android/launcher3/qsb/QsbWidgetHostView;Landroid/view/View;)V

    return-void
.end method
