.class public final synthetic Lcom/android/launcher3/popup/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/j;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/j;->g:Ljava/util/HashMap;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->f(Ljava/util/HashMap;Lcom/android/launcher3/model/WidgetItem;)V

    return-void
.end method
