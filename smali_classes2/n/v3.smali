.class public final synthetic Ln/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/WidgetItem;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/WidgetItem;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/v3;->g:Lcom/android/launcher3/model/WidgetItem;

    iput-object p2, p0, Ln/v3;->h:Ljava/util/List;

    iput-object p3, p0, Ln/v3;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ln/v3;->g:Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, p0, Ln/v3;->h:Ljava/util/List;

    iget-object p0, p0, Ln/v3;->i:Landroid/content/Context;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/WidgetsModel;->e(Lcom/android/launcher3/model/WidgetItem;Ljava/util/List;Landroid/content/Context;Ljava/lang/Integer;)V

    return-void
.end method
