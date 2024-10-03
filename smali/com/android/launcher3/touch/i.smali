.class public final synthetic Lcom/android/launcher3/touch/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/Launcher;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/i;->g:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/touch/i;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/touch/i;->i:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/touch/i;->g:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/touch/i;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/touch/i;->i:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->g(Lcom/android/launcher3/Launcher;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
