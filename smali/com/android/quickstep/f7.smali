.class public final synthetic Lcom/android/quickstep/f7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

.field public final synthetic h:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/f7;->g:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    iput-object p2, p0, Lcom/android/quickstep/f7;->h:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/f7;->g:Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    iget-object p0, p0, Lcom/android/quickstep/f7;->h:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, p0}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;->n(Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method
