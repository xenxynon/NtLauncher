.class public final synthetic Le/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public final synthetic h:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic i:I

.field public final synthetic j:[I

.field public final synthetic k:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/h;->g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Le/h;->h:Lcom/android/launcher3/model/data/ItemInfo;

    iput p3, p0, Le/h;->i:I

    iput-object p4, p0, Le/h;->j:[I

    iput-boolean p5, p0, Le/h;->k:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/h;->g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Le/h;->h:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, p0, Le/h;->i:I

    iget-object v3, p0, Le/h;->j:[I

    iget-boolean p0, p0, Le/h;->k:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->e(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V

    return-void
.end method
