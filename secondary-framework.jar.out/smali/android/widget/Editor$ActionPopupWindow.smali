.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = #android:layout@yi_text_edit_action_popup_text#t


# instance fields
.field private mBaidkeTextView:Landroid/widget/TextView;

.field mPasteTextView:Landroid/widget/TextView;

.field mReplaceTextView:Landroid/widget/TextView;

.field private mSearchTextView:Landroid/widget/TextView;

.field private mTranslatorTextView:Landroid/widget/TextView;

.field private mVisibleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private positionFlag:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 3006
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 3015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    .line 3016
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Editor$ActionPopupWindow;->positionFlag:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3006
    invoke-direct {p0, p1}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private startSemiView(I)V
    .locals 10
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    .line 3156
    const/4 v2, 0x0

    .line 3157
    .local v2, min:I
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3159
    .local v1, max:I
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3160
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 3161
    .local v4, selStart:I
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 3163
    .local v3, selEnd:I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3164
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3167
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v8

    #setter for: Landroid/widget/Editor;->mSearchText:Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Landroid/widget/Editor;->access$2602(Landroid/widget/Editor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3169
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mSearchText:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mSearchText:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 3170
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v5, v7

    .line 3171
    .local v5, startPointerX:I
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    .line 3172
    .local v6, startPointerY:I
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 3173
    .local v0, locationInWindow:[I
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 3175
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    aget v8, v0, v9

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 3176
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    const/4 v8, 0x1

    aget v8, v0, v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 3177
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mSearchText:Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5, v6, p1}, Lcom/android/internal/util/SearchHelper;->startSearch(Landroid/content/Context;Ljava/lang/String;III)V

    .line 3179
    .end local v0           #locationInWindow:[I
    .end local v5           #startPointerX:I
    .end local v6           #startPointerY:I
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v7}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 3180
    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 23
    .parameter "positionY"

    .prologue
    .line 3233
    const/4 v14, 0x0

    .line 3234
    .local v14, min:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 3235
    .local v9, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3236
    iget v14, v9, Landroid/graphics/Rect;->top:I

    .line 3237
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 3238
    .local v18, outValue:Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    const v21, #android:attr@actionBarSize#t

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3240
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 3241
    int-to-float v0, v14

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v14, v0

    .line 3243
    :cond_0
    const-string v20, "Editor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "min "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " positionY = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    move/from16 v0, p1

    if-ge v0, v14, :cond_7

    .line 3245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 3246
    .local v16, offsetEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 3247
    .local v13, lineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    const/high16 v21, 0x3f00

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v6, v0

    .line 3248
    .local v6, endPositionX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 3249
    .local v7, endPositionY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 3250
    .local v5, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v20

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-eqz v20, :cond_2

    .line 3251
    :cond_1
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    const/high16 v21, 0x4080

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 3253
    .local v17, offsetToBaseLine:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v20

    add-int v7, v20, v17

    .line 3257
    .end local v17           #offsetToBaseLine:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v20

    add-int v6, v6, v20

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v20

    add-int v7, v7, v20

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Landroid/widget/Editor;->isPositionVisible(II)Z
    invoke-static {v0, v6, v7}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;II)Z

    move-result v8

    .line 3260
    .local v8, endVisible:Z
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v4, v0, [I

    .line 3261
    .local v4, coords:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 3262
    const/16 v20, 0x1

    aget v20, v4, v20

    add-int v20, v20, v7

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x28

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    const/16 v19, 0x1

    .line 3264
    .local v19, popupVisible:Z
    :goto_0
    if-eqz v8, :cond_4

    if-eqz v19, :cond_4

    .line 3265
    const/16 v20, 0x1

    aget v20, v4, v20

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x28

    add-int v20, v20, v21

    add-int v7, v7, v20

    .line 3266
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$PinnedPopupWindow;->mTop:Z

    .line 3292
    .end local v4           #coords:[I
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #endPositionX:I
    .end local v7           #endPositionY:I
    .end local v8           #endVisible:Z
    .end local v13           #lineEnd:I
    .end local v16           #offsetEnd:I
    .end local v19           #popupVisible:Z
    :goto_1
    return v7

    .line 3262
    .restart local v4       #coords:[I
    .restart local v5       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v6       #endPositionX:I
    .restart local v7       #endPositionY:I
    .restart local v8       #endVisible:Z
    .restart local v13       #lineEnd:I
    .restart local v16       #offsetEnd:I
    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    .line 3270
    .restart local v19       #popupVisible:Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->getTextOffset()I

    move-result v15

    .line 3271
    .local v15, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 3272
    .local v11, layout:Landroid/text/Layout;
    invoke-virtual {v11, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 3274
    .local v12, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v20

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-eqz v20, :cond_6

    .line 3275
    :cond_5
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    const/high16 v21, 0x4080

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 3276
    .restart local v17       #offsetToBaseLine:I
    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v20

    add-int v20, v20, v17

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    sub-int v20, v20, v21

    add-int p1, p1, v20

    .line 3280
    .end local v17           #offsetToBaseLine:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v20

    add-int p1, p1, v20

    .line 3283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 3286
    .local v10, handle:Landroid/graphics/drawable/Drawable;
    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x50

    add-int p1, p1, v20

    .line 3287
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$PinnedPopupWindow;->mTop:Z

    .end local v4           #coords:[I
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #endPositionX:I
    .end local v7           #endPositionY:I
    .end local v8           #endVisible:Z
    .end local v10           #handle:Landroid/graphics/drawable/Drawable;
    .end local v11           #layout:Landroid/text/Layout;
    .end local v12           #line:I
    .end local v13           #lineEnd:I
    .end local v15           #offset:I
    .end local v16           #offsetEnd:I
    .end local v19           #popupVisible:Z
    :goto_3
    move/from16 v7, p1

    .line 3292
    goto/16 :goto_1

    .line 3278
    .restart local v4       #coords:[I
    .restart local v5       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v6       #endPositionX:I
    .restart local v7       #endPositionY:I
    .restart local v8       #endVisible:Z
    .restart local v11       #layout:Landroid/text/Layout;
    .restart local v12       #line:I
    .restart local v13       #lineEnd:I
    .restart local v15       #offset:I
    .restart local v16       #offsetEnd:I
    .restart local v19       #popupVisible:Z
    :cond_6
    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v20

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    sub-int v20, v20, v21

    add-int p1, p1, v20

    goto :goto_2

    .line 3289
    .end local v4           #coords:[I
    .end local v5           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #endPositionX:I
    .end local v7           #endPositionY:I
    .end local v8           #endVisible:Z
    .end local v11           #layout:Landroid/text/Layout;
    .end local v12           #line:I
    .end local v13           #lineEnd:I
    .end local v15           #offset:I
    .end local v16           #offsetEnd:I
    .end local v19           #popupVisible:Z
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$PinnedPopupWindow;->mTop:Z

    goto :goto_3
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 3021
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, #android:attr@textSelectHandleWindowStyle#t

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3023
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3024
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 3126
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3127
    return-void
.end method

.method protected getTextOffset()I
    .locals 9

    .prologue
    .line 3191
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 3192
    .local v5, start:I
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 3194
    .local v1, end:I
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 3195
    .local v6, startLine:I
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 3197
    .local v2, endLine:I
    if-ne v6, v2, :cond_1

    .line 3198
    add-int v7, v5, v1

    div-int/lit8 v0, v7, 0x2

    .line 3214
    :cond_0
    :goto_0
    return v0

    .line 3199
    :cond_1
    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 3201
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 3202
    .local v4, lastOffset:I
    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 3203
    .local v3, firstOffset:I
    add-int v7, v3, v4

    div-int/lit8 v0, v7, 0x2

    .line 3204
    .local v0, center:I
    if-ge v0, v5, :cond_0

    .line 3205
    move v0, v5

    goto :goto_0

    .line 3209
    .end local v0           #center:I
    .end local v3           #firstOffset:I
    .end local v4           #lastOffset:I
    :cond_2
    iget v7, p0, Landroid/widget/Editor$ActionPopupWindow;->positionFlag:I

    if-nez v7, :cond_3

    move v0, v5

    .line 3210
    goto :goto_0

    .line 3211
    :cond_3
    iget v7, p0, Landroid/widget/Editor$ActionPopupWindow;->positionFlag:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    move v0, v1

    .line 3212
    goto :goto_0

    .line 3214
    :cond_4
    add-int v7, v5, v1

    div-int/lit8 v0, v7, 0x2

    goto :goto_0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 3224
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3225
    .local v0, density:F
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    float-to-int v2, v0

    mul-int/lit8 v2, v2, 0x28

    sub-int/2addr v1, v2

    return v1
.end method

.method protected initContentView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const v5, #android:layout@yi_text_edit_action_popup_text#t

    .line 3029
    new-instance v1, Lcom/android/internal/widget/PopupLayout;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/PopupLayout;-><init>(Landroid/content/Context;)V

    .line 3030
    .local v1, popupLayout:Lcom/android/internal/widget/PopupLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setOrientation(I)V

    .line 3031
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:drawable@yi_list_divider_baidu_light#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3032
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setShowDividers(I)V

    .line 3033
    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:dimen@yi_floating_bar_divider_padding#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/PopupLayout;->setDividerPadding(I)V

    iput-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, #android:drawable@yi_text_edit_paste_window#t

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3042
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3045
    .local v2, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v4, #android:string@paste#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v4, #android:string@replace#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    const v4, #android:string@websearch#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    const v4, #android:string@web_baike#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    const v4, #android:string@web_translator#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 3136
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3137
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const v2, #android:id@paste#t

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3138
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 3152
    :cond_0
    :goto_0
    return-void

    .line 3139
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 3140
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 3141
    .local v0, middle:I
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 3142
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3143
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->showSuggestions()V

    goto :goto_0

    .line 3144
    .end local v0           #middle:I
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 3145
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/widget/Editor$ActionPopupWindow;->startSemiView(I)V

    goto :goto_0

    .line 3146
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 3147
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/widget/Editor$ActionPopupWindow;->startSemiView(I)V

    goto :goto_0

    .line 3148
    :cond_4
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 3149
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/widget/Editor$ActionPopupWindow;->startSemiView(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 3080
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    .line 3081
    .local v0, canPaste:Z
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v8}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v6

    .line 3082
    .local v2, canSuggest:Z
    :goto_0
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    .line 3083
    .local v1, canSearch:Z
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v8, v7

    :goto_1
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3084
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    move v8, v7

    :goto_2
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3087
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move v8, v7

    :goto_3
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3088
    iget-object v10, p0, Landroid/widget/Editor$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move v8, v7

    :goto_4
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3089
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move v9, v7

    :cond_0
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3091
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    if-nez v1, :cond_6

    .line 3122
    :goto_5
    return-void

    .end local v1           #canSearch:Z
    .end local v2           #canSuggest:Z
    :cond_1
    move v2, v7

    .line 3081
    goto :goto_0

    .restart local v1       #canSearch:Z
    .restart local v2       #canSuggest:Z
    :cond_2
    move v8, v9

    .line 3083
    goto :goto_1

    :cond_3
    move v8, v9

    .line 3084
    goto :goto_2

    :cond_4
    move v8, v9

    .line 3087
    goto :goto_3

    :cond_5
    move v8, v9

    .line 3088
    goto :goto_4

    .line 3093
    :cond_6
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3094
    if-eqz v0, :cond_7

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3095
    :cond_7
    if-eqz v2, :cond_8

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    :cond_8
    if-eqz v1, :cond_9

    .line 3097
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3098
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/Editor$ActionPopupWindow;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3099
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3101
    :cond_9
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3103
    .local v5, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v5, :cond_a

    .line 3104
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3106
    .local v3, child:Landroid/widget/TextView;
    if-ne v5, v6, :cond_b

    .line 3107
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3121
    .end local v3           #child:Landroid/widget/TextView;
    :cond_a
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_5

    .line 3111
    .restart local v3       #child:Landroid/widget/TextView;
    :cond_b
    if-nez v4, :cond_c

    .line 3112
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3103
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3113
    :cond_c
    add-int/lit8 v8, v5, -0x1

    if-ne v4, v8, :cond_d

    .line 3114
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_7

    .line 3116
    :cond_d
    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_7
.end method

.method public updatePositionFlag(I)V
    .locals 0
    .parameter "Flag"

    .prologue
    return-void
.end method
